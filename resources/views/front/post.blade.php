@extends('front.layout')

@section('main')

<!-- post
================================================== -->
<div class="row">
  <div class="column large-12">

      <article class="s-content__entry format-standard">

          <div class="s-content__media">
              <div class="s-content__post-thumb">
                  <img src="{{ getImage($post) }}" alt="" style="width:100%">
              </div>
          </div>

          <div class="s-content__entry-header">
              <h1 class="s-content__title s-content__title--post">{{ $post->title }}</h1>
          </div>

          <div class="s-content__primary">

              <div class="s-content__entry-content">

                  {!! $post->body !!}

              </div>

              <div class="s-content__entry-meta">

                  <div class="entry-author meta-blk">
                      <div class="author-avatar">
                          <img class="avatar" src="{{ Gravatar::get($post->user->email) }}" alt="">
                      </div>
                      <div class="byline">
                          <span class="bytext">@lang('Posted By')</span>
                          <a href="{{ route('author', $post->user->id) }}">{{ $post->user->name }}</a>
                      </div>
                  </div>

                  <div class="meta-bottom">
                      
                      <div class="entry-cat-links meta-blk">
                          <div class="cat-links">
                              <span>@lang('In')</span> 
                              @foreach ($post->categories as $category)
                                  <a href="{{ route('category', $category->slug) }}">{{ $category->title }}</a>
                              @endforeach
                          </div>

                          <span>@lang('On')</span>
                          {{ formatDate($post->created_at) }}
                      </div>

                      <div class="entry-tags meta-blk">
                          <span class="tagtext">@lang('Tags')</span>
                          @foreach($post->tags as $tag)
                              <a href="{{ route('tag', $tag->slug) }}">{{ $tag->tag }}</a>
                          @endforeach
                      </div>

                  </div>

              </div>

              <div class="s-content__pagenav">
                  @isset($post->previous)
                      <div class="prev-nav">
                          <a href="{{ route('posts.display', $post->previous->slug) }}" rel="prev">
                              <span>@lang('Previous')</span>
                              {{ $post->previous->title }}
                          </a>
                      </div>
                  @endisset
                  @isset($post->next)
                      <div class="next-nav">
                          <a href="{{ route('posts.display', $post->next->slug) }}" rel="next">
                              <span>@lang('Next One')</span>
                              {{ $post->next->title }}
                          </a>
                      </div>
                  @endisset
               </div>

          </div>
      </article>

  </div>
</div>

<!-- comments
================================================== -->
<div class="comments-wrap">

  <div id="comments" class="row">
      <div id="commentsList" class="column large-12">      

          @if($post->valid_comments_count > 0)
              <div id="forShow">
                  <p id="showbutton" class="text-center">
                      <a id="showcomments" href="{{ route('posts.comments', $post->id) }}" class="btn h-full-width">@lang('Show comments')</a>
                  </p>
                  <p id="showicon" class="h-text-center" hidden>
                      <span class="fa fa-spinner fa-pulse fa-3x fa-fw"></span>
                  </p>
              </div>
          @endif

      </div>
  </div>
</div>

@endsection

@section('scripts')
    <script>
      (() => {

          // Variables
          const headers = {
              'X-CSRF-TOKEN': '{{ csrf_token() }}', 
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'X-Requested-With': 'XMLHttpRequest'
          }

        // Prepare show comments
        const prepareShowComments = e => {
            console.log('Event:', e);
            e.preventDefault();

            document.getElementById('showbutton').toggleAttribute('hidden');
            document.getElementById('showicon').toggleAttribute('hidden');
            showComments(); 
        }

        // Show comments
        const showComments = async () => {

            console.log('Sending request to:', '{{ route('posts.comments', $post->id) }}');
            console.log('Headers:', headers);

            // Send request
            const response = await fetch('{{ route('posts.comments', $post->id) }}', { 
                method: 'GET',
                headers: headers
            });

            console.log('Response:', response);

            // Wait for response
            const data = await response.json();
            console.log('Data:', data);

            document.getElementById('commentsList').innerHTML = data.html;
        }

          // Listener wrapper
          const wrapper = (selector, type, callback, condition = 'true', capture = false) => {
              const element = document.querySelector(selector);
              if(element) {
                  document.querySelector(selector).addEventListener(type, e => { 
                      if(eval(condition)) {
                          callback(e);
                      }
                  }, capture);
              }
          };

          // Set listeners
          window.addEventListener('DOMContentLoaded', () => {
              wrapper('#showcomments', 'click', prepareShowComments);              
          })

      })()

    </script> 
@endsection