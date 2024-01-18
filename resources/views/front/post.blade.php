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

@endsection