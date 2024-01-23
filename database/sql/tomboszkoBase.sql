-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table blogtomboszko.categories : ~3 rows (environ)
INSERT INTO `categories` (`id`, `title`, `slug`) VALUES
	(1, 'Category 1', 'category-1'),
	(2, 'Category 2', 'category-2'),
	(3, 'Category 3', 'category-3');

-- Listage des données de la table blogtomboszko.category_post : ~15 rows (environ)
INSERT INTO `category_post` (`id`, `category_id`, `post_id`) VALUES
	(1, 3, 1),
	(2, 1, 1),
	(3, 2, 2),
	(4, 3, 2),
	(5, 1, 3),
	(6, 2, 4),
	(7, 3, 4),
	(8, 2, 5),
	(9, 1, 6),
	(10, 3, 6),
	(11, 3, 7),
	(12, 1, 8),
	(13, 3, 8),
	(14, 1, 9),
	(16, 1, 11),
	(17, 2, 11),
	(18, 3, 11),
	(19, 1, 12),
	(20, 2, 12);

-- Listage des données de la table blogtomboszko.comments : ~3 rows (environ)
INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `body`, `_lft`, `_rgt`, `parent_id`, `user_id`, `post_id`) VALUES
	(14, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Et temporibus minus adipisci dignissimos. Occaecati ut consequuntur enim incidunt dolorem dicta. Et magnam quis est quos voluptas. Velit ut voluptatem inventore quam atque at. Illum omnis sapiente natus itaque a vero vero.', 26, 31, 12, 6, 2),
	(16, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'A nemo ipsum fuga blanditiis esse. Sint neque eum quae enim culpa adipisci iste explicabo. Quidem ratione non eos dicta suscipit illo enim deleniti. Rerum sint quis tempora quod temporibus. Voluptatem id dignissimos hic similique illum.', 28, 29, 15, 6, 2),
	(25, '2024-01-23 02:21:39', '2024-01-23 02:21:39', 'test comment from the boss', 32, 33, NULL, 17, 1),
	(26, '2024-01-23 02:27:35', '2024-01-23 02:27:35', 'comment', 34, 35, NULL, 17, 9);

-- Listage des données de la table blogtomboszko.contacts : ~4 rows (environ)
INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `user_id`, `name`, `email`, `message`) VALUES
	(2, '2024-01-20 13:11:05', '2024-01-20 13:11:05', NULL, 'Mr. Randy Lindgren V', 'cruz.toy@example.org', 'I\'ll be jury," Said cunning old Fury: "I\'ll try the patience of an oyster!\' \'I wish I hadn\'t drunk quite so much!\' Alas! it was too dark to see what I should like to show you! A little bright-eyed.'),
	(3, '2024-01-20 13:11:05', '2024-01-20 13:11:05', NULL, 'Kobe Harber', 'williamson.granville@example.net', 'By the use of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said in.'),
	(4, '2024-01-20 13:11:05', '2024-01-20 13:11:05', NULL, 'Prof. Efren Bode III', 'murray.cristian@example.com', 'I know!\' exclaimed Alice, who felt ready to make out exactly what they WILL do next! As for pulling me out of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *.'),
	(5, '2024-01-20 13:11:05', '2024-01-20 13:11:05', NULL, 'Dr. Nicola Muller PhD', 'eliseo57@example.org', 'Bill! the master says you\'re to go after that savage Queen: so she went on, \'I must be a lesson to you to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman continued in the distance, and.'),
	(9, '2024-01-22 17:50:14', '2024-01-22 17:50:14', 1, 'Mrs. Clare Rath Jr.', 'quigley.carolyne@example.com', 'bjour !');

-- Listage des données de la table blogtomboszko.failed_jobs : ~0 rows (environ)

-- Listage des données de la table blogtomboszko.follows : ~4 rows (environ)
INSERT INTO `follows` (`id`, `href`, `title`) VALUES
	(1, '#', 'Twitter'),
	(2, 'https://www.facebook.com/IITomsII/', 'Facebook'),
	(3, '#', 'Youtube'),
	(4, '#', 'Instagram');

-- Listage des données de la table blogtomboszko.migrations : ~0 rows (environ)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_01_29_123159_create_notifications_table', 1),
	(6, '2021_01_29_125124_create_categories_table', 1),
	(7, '2021_01_29_130204_create_tags_table', 1),
	(8, '2021_01_29_130730_create_posts_table', 1),
	(9, '2021_01_29_134938_category_post_table', 1),
	(10, '2021_01_29_135415_post_tag_table', 1),
	(11, '2021_01_29_155232_create_comments_table', 1),
	(12, '2021_02_07_161847_create_contacts_table', 1),
	(13, '2021_02_08_123612_create_pages_table', 1),
	(14, '2024_01_20_140211_create_follows_table', 1);

-- Listage des données de la table blogtomboszko.notifications : ~11 rows (environ)
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('16e7fa07-d87b-42dc-b6c3-3646165a8b6e', 'App\\Notifications\\ModelCreated', 'App\\Models\\Contact', 8, '[]', NULL, '2024-01-22 15:04:13', '2024-01-22 15:04:13'),
	('22f0d81e-02cc-49b9-a3a2-a644baac790d', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 25, '[]', NULL, '2024-01-23 02:21:39', '2024-01-23 02:21:39'),
	('335d4174-d8f2-4ae6-aee2-1dcbd3e75765', 'App\\Notifications\\ModelCreated', 'App\\Models\\User', 10, '[]', NULL, '2024-01-22 14:18:43', '2024-01-22 14:18:43'),
	('4a2fe31a-4450-486e-bf03-2b0ecb27004f', 'App\\Notifications\\ModelCreated', 'App\\Models\\Contact', 9, '[]', NULL, '2024-01-22 17:50:15', '2024-01-22 17:50:15'),
	('5cb3a745-6a9b-4d2d-a6f7-69932c91f25d', 'App\\Notifications\\ModelCreated', 'App\\Models\\User', 17, '[]', NULL, '2024-01-23 02:17:17', '2024-01-23 02:17:17'),
	('65144b5f-e5b7-4c2d-bab0-87a7d0a0cad3', 'App\\Notifications\\ModelCreated', 'App\\Models\\User', 9, '[]', NULL, '2024-01-22 14:01:25', '2024-01-22 14:01:25'),
	('6f497234-2952-4906-abaf-763488aa24d0', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 26, '[]', NULL, '2024-01-23 02:27:35', '2024-01-23 02:27:35'),
	('7e3ca23c-191e-414e-8138-0792aed6b482', 'App\\Notifications\\ModelCreated', 'App\\Models\\Contact', 7, '[]', NULL, '2024-01-21 10:56:25', '2024-01-21 10:56:25'),
	('8648351e-d1c4-4db5-97a0-2391928bab1d', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 22, '[]', NULL, '2024-01-21 10:58:58', '2024-01-21 10:58:58'),
	('a9f4188a-792b-4f51-9d61-f707ca73bfdb', 'App\\Notifications\\ModelCreated', 'App\\Models\\Post', 12, '[]', NULL, '2024-01-23 02:42:42', '2024-01-23 02:42:42'),
	('afdd8606-c412-49b4-a083-36d8ca464d8c', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 23, '[]', NULL, '2024-01-22 15:06:56', '2024-01-22 15:06:56'),
	('d2af85e9-b2dc-447d-bc8d-32bfc17b62e5', 'App\\Notifications\\ModelCreated', 'App\\Models\\Post', 11, '[]', NULL, '2024-01-22 09:26:04', '2024-01-22 09:26:04'),
	('dd3a75a1-5dd8-4a27-a2c4-6bd5cd3dbc52', 'App\\Notifications\\ModelCreated', 'App\\Models\\Post', 10, '[]', NULL, '2024-01-22 09:17:17', '2024-01-22 09:17:17'),
	('e9aac520-8c22-4ccd-8213-9a39fac75c2d', 'App\\Notifications\\ModelCreated', 'App\\Models\\Contact', 6, '[]', NULL, '2024-01-20 14:39:47', '2024-01-20 14:39:47'),
	('ebab0acb-2e82-45e0-ae3e-b7f0a1dc746c', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 24, '[]', NULL, '2024-01-22 17:17:27', '2024-01-22 17:17:27'),
	('f5a651a4-3505-41e9-a8ac-2e005459812c', 'App\\Notifications\\ModelCreated', 'App\\Models\\Comment', 21, '[]', NULL, '2024-01-20 14:26:34', '2024-01-20 14:26:34');

-- Listage des données de la table blogtomboszko.pages : ~4 rows (environ)
INSERT INTO `pages` (`id`, `slug`, `title`, `body`) VALUES
	(1, 'about-us', 'About us', '<p>Test modif page <img alt="" src="http://tom-boszko.com/storage/photos/1/Image4.jpg" style="float:left" />Ea molestiae et ullam non. Aut error esse ratione esse et voluptatem. Et quae repellendus impedit laboriosam consequatur fugit sunt. Ab corrupti deleniti eligendi tempora. Aut quod dolorem nam rerum. Assumenda et sed aut omnis expedita. Voluptatum tempore fuga doloribus quisquam deserunt. Numquam exercitationem at aut molestiae officia. Qui itaque odit dolore. Eaque dolores velit veritatis provident.</p>'),
	(2, 'terms', 'Terms', '<h2>Avertissement</h2>\r\n\r\n<div>\r\n<p>Les articles et commentaires publi&eacute;s sont sign&eacute;s du nom des auteurs et engagent leur seule responsabilit&eacute;, sans aucune n&eacute;cessit&eacute; de conformit&eacute; avec l&#39;orientation de &laquo; Tom Boszko &raquo;, et sans que &laquo; Tom Boszko &raquo; ne prenne en rien &agrave; son compte leur orientation.</p>\r\n\r\n<p>Ce blog contient des liens hypertextes vers d&rsquo;autres sites et blogs dont&nbsp;il n&rsquo;est pas l&rsquo;&eacute;diteur. &Agrave; ce titre, il ne peut &ecirc;tre tenu responsable de la disponibilit&eacute; ou des contenus de ces sites et blogs.</p>\r\n\r\n<p>Pour de plus amples renseignements et/ou r&eacute;clamation, veuillez nous contacter via notre formulaire de contact : <a href="http://blog.local/contacts/create">Formulaire de contact</a></p>\r\n</div>'),
	(3, 'faq', 'FAQ', 'Page en construction'),
	(4, 'privacy-policy', 'Privacy Policy', '<p><strong>Mentions l&eacute;gales RGPD pour Tom Boszko</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>&Eacute;diteur et Responsable de la publication :</strong></p>\r\n\r\n	<ul>\r\n		<li>Nom : Tom Boszko</li>\r\n		<li><a href="http://blog.local/contacts/create">Formulaire de contact</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>H&eacute;bergeur :</strong></p>\r\n\r\n	<ul>\r\n		<li><a href="https://www.heroku.com/">https://www.heroku.com/</a> by Salesforce</li>\r\n		<li><a href="https://www.salesforce.com/company/program-agreement/">https://www.salesforce.com/company/program-agreement/</a>&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Collecte et Utilisation des Donn&eacute;es Personnelles :</strong></p>\r\n\r\n	<ul>\r\n		<li>Les donn&eacute;es personnelles collect&eacute;es sur ce site comprennent les noms et adresses e-mail, obtenus via notre formulaire de contact et lors de l&#39;inscription des utilisateurs.</li>\r\n		<li>Ces donn&eacute;es sont utilis&eacute;es pour :\r\n		<ul>\r\n			<li>Permettre aux utilisateurs de commenter sur le blog.</li>\r\n			<li>Envoyer des newsletters aux abonn&eacute;s.</li>\r\n			<li>R&eacute;pondre aux demandes faites via le formulaire de contact.</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Consentement :</strong></p>\r\n\r\n	<ul>\r\n		<li>Le consentement des utilisateurs pour la collecte et le traitement de leurs donn&eacute;es est obtenu explicitement lors de l&#39;utilisation du formulaire de contact et de l&#39;inscription.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Droits des Utilisateurs :</strong></p>\r\n\r\n	<ul>\r\n		<li>Conform&eacute;ment au RGPD, les utilisateurs ont le droit d&#39;acc&eacute;der &agrave; leurs donn&eacute;es personnelles, de demander leur rectification ou leur suppression. Pour exercer ces droits, veuillez contacter Tom Boszko via&nbsp;<a href="http://blog.local/contacts/create">Formulaire de contact</a>.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>S&eacute;curit&eacute; des Donn&eacute;es :</strong></p>\r\n\r\n	<ul>\r\n		<li>Les donn&eacute;es personnelles sont s&eacute;curis&eacute;es et crypt&eacute;es dans notre base de donn&eacute;es pour pr&eacute;venir tout acc&egrave;s non autoris&eacute;.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Transfert de Donn&eacute;es :</strong></p>\r\n\r\n	<ul>\r\n		<li>Aucune donn&eacute;e personnelle n&#39;est transf&eacute;r&eacute;e &agrave; des tiers ou hors de l&#39;Union europ&eacute;enne.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies :</strong></p>\r\n\r\n	<ul>\r\n		<li>Ce site ne fait pas usage de cookies.</li>\r\n	</ul>\r\n	</li>\r\n</ol>');

-- Listage des données de la table blogtomboszko.password_resets : ~0 rows (environ)

-- Listage des données de la table blogtomboszko.personal_access_tokens : ~0 rows (environ)

-- Listage des données de la table blogtomboszko.posts : ~11 rows (environ)
INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `seo_title`, `excerpt`, `body`, `meta_description`, `meta_keywords`, `active`, `image`, `user_id`) VALUES
	(1, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 1', 'post-1', 'Post 1', 'Nam et qui debitis consequatur. Sequi sint id voluptatem sapiente quia quisquam soluta ipsam. Veritatis nemo dolorem est molestias.', 'Id quia qui vel ducimus laudantium aut. Quibusdam recusandae facere voluptatem delectus veniam. Debitis placeat delectus fugiat ea aperiam porro sed ut.\n\nConsequatur ab sit ea enim voluptas explicabo et fugit. Sint distinctio dolorem harum sit quia recusandae cumque. Sapiente est enim veritatis.\n\nAtque error quos dignissimos expedita nihil et minus quisquam. Quibusdam est laudantium praesentium architecto et dolore. Nihil perspiciatis et iusto quas consequatur et reiciendis nihil. Exercitationem doloremque quaerat esse eos aliquam animi.\n\nVeritatis accusantium mollitia velit ad quasi et ut. Enim aut nemo fugit nemo voluptate soluta. Dolores blanditiis corporis molestiae est voluptatem soluta in qui. Culpa iusto quidem quibusdam est est quis dolore.\n\nConsequatur accusantium consectetur dolorem sequi soluta aut. Itaque similique blanditiis omnis velit asperiores voluptatum. Quidem et officiis iusto non commodi delectus et. Et doloribus et totam nobis id.\n\nEt provident est magni sapiente sed. Qui expedita ut quod quidem ab beatae. Unde sed facilis et id qui molestias deserunt quo.\n\nBeatae iure culpa et. Totam voluptatem perferendis minima qui vitae. Enim quia delectus officia labore commodi. Labore quae itaque quia perferendis.\n\nQuis dolor dolorem commodi. Inventore sapiente asperiores ut dolore. Culpa soluta vel non harum quis. Distinctio nam consequatur provident nesciunt pariatur rerum non. Quia voluptatibus possimus inventore est ut aperiam.', 'Itaque rerum praesentium a.', 'repudiandae,ut,placeat', 1, 'img01.jpg', 2),
	(2, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 2', 'post-2', 'Post 2', 'Necessitatibus in ullam nobis suscipit. Ut qui error enim hic omnis. Accusantium a pariatur non nihil non repellat esse. Ut placeat optio molestiae aspernatur eos voluptate similique.', 'Neque qui fugit et accusantium quas omnis. Dolores illo neque eos totam optio vero adipisci quia. Atque vel aut explicabo quas.\n\nSequi culpa et asperiores. Fugiat et necessitatibus autem inventore et repudiandae praesentium voluptatem. Libero esse illum ex. Ut et architecto sunt nostrum reiciendis. Sint quis ut deleniti reprehenderit cum et vel quasi.\n\nModi tempore voluptatem beatae. Aspernatur voluptatem molestiae aut repudiandae. Consectetur libero dolorem voluptatem consequatur neque expedita. Et minima aut qui magni molestiae rerum.\n\nAsperiores voluptatem dolorum eos provident deleniti facere. Ratione quia recusandae minima quas pariatur provident vero quae. Delectus ut eius dolore nobis amet recusandae quo. Ullam qui reprehenderit sit autem et.\n\nRerum doloremque mollitia accusantium quisquam dolore consequatur sequi. Vel dolores recusandae rerum adipisci. Culpa libero omnis autem illo dolorem ipsa accusantium. Autem consectetur ut odit corrupti.\n\nIure aliquam iusto nesciunt exercitationem. Quo reprehenderit dolor reprehenderit dolores assumenda. Vero amet consequatur aut quibusdam asperiores consequatur quia ipsa. Optio temporibus et minus debitis sit.\n\nPerspiciatis impedit doloremque ut ex. Et ea id in hic maiores. Voluptate ipsa laborum deleniti ipsam laborum suscipit unde.\n\nQuibusdam atque molestiae id voluptatem. Dolore laborum itaque labore et quia. Laboriosam et enim delectus eligendi alias veniam hic labore.', 'Animi pariatur harum adipisci ut.', 'officia,quidem,corrupti', 1, 'img02.jpg', 2),
	(3, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 3', 'post-3', 'Post 3', 'Repudiandae asperiores cupiditate qui id esse. Qui repudiandae debitis cum qui est. Non velit harum id dolores.', 'Ut occaecati quia non ea praesentium qui. Est rerum veritatis fugiat. Tempore quibusdam et ex accusantium tenetur et minima. Expedita cupiditate atque et autem commodi unde.\n\nEarum alias eum aliquid totam dignissimos ipsa expedita. Illum sapiente ullam amet soluta. Reiciendis est consequatur reiciendis.\n\nQuia aperiam asperiores sapiente. Autem accusantium molestiae explicabo hic accusamus tempora. Minima quisquam fugit at voluptatum error quo deserunt tenetur.\n\nRerum nihil nam rerum iusto corrupti rem. Voluptas provident est consequuntur autem voluptatem vitae voluptas accusantium. Inventore debitis id dolorem vitae cumque aut. Et qui voluptatum maxime voluptatibus repudiandae perspiciatis dolor et.\n\nAutem asperiores quod quibusdam quam ut vel et. Non omnis nesciunt quae omnis maxime quia illo hic. Quia sed tempore ut qui officia.\n\nNumquam enim optio voluptatem. Perspiciatis dolores labore cum assumenda corrupti sit laudantium. Aperiam vero et dolorem.\n\nPariatur ut eveniet dolor rem provident. Et sint dolores architecto magnam. Error officia et dolorum officiis. Aut voluptates iure beatae nihil natus.\n\nTemporibus voluptate consectetur quo velit impedit voluptatem voluptatem aliquid. A excepturi molestias blanditiis labore. Dolores aliquam cum nesciunt ipsum.', 'Odit quia eum perspiciatis earum corporis maxime.', 'ut,quod,debitis', 1, 'img03.jpg', 3),
	(4, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 4', 'post-4', 'Post 4', 'Officiis est voluptatem perspiciatis doloremque. In excepturi maxime ad quis veniam cum ut deserunt. Animi adipisci libero sit dolore.', 'Illo impedit praesentium quasi magni et fugiat. Ab suscipit velit vitae nemo sint. Error aut ut et et earum nisi eaque et.\n\nDignissimos et voluptas qui consequatur natus sint exercitationem. Omnis autem consequuntur dolor ducimus repudiandae in. A consectetur quia et magni animi omnis. Sunt laborum assumenda quibusdam.\n\nRerum quae qui quia. At quae itaque aperiam est. Hic quasi ut placeat dolore maiores expedita. Saepe rerum reprehenderit velit dolore aspernatur voluptatem aut.\n\nVel placeat aut necessitatibus harum vitae voluptatem soluta. Tenetur et ut culpa expedita hic. Quaerat minus voluptatem voluptas suscipit quia. Quos hic dignissimos deserunt officiis sed veniam modi. Velit qui quas aliquam quos nihil aut.\n\nVel nostrum quas sed et molestias. Tempore quibusdam perspiciatis consequatur voluptatibus nesciunt.\n\nQuo aut est sed qui eum veniam sequi. Accusamus reiciendis voluptates qui iste eius dolore. Inventore eaque nam et. Recusandae quo eum qui ab et.\n\nConsequuntur facere est porro rerum illo. Esse ex quis sapiente. Nisi temporibus repellendus aspernatur eaque.\n\nEveniet rerum sed voluptatum reprehenderit explicabo qui. Id voluptatum maxime incidunt inventore et vero doloremque. Voluptatum inventore et ipsum expedita molestiae voluptatibus labore ut. Voluptatem deserunt est et facere. Fugiat rem consequuntur veritatis eveniet.', 'Voluptatem perferendis totam porro dicta quos ut deserunt.', 'numquam,illum,consequatur', 1, 'img04.jpg', 3),
	(5, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 5', 'post-5', 'Post 5', 'Eveniet praesentium nesciunt voluptatibus ex doloribus. Delectus itaque deserunt sed voluptatem. Cupiditate illo voluptatem id. Pariatur placeat tenetur nam architecto sunt.', 'Eum optio est qui dicta maiores et adipisci. Ut fuga eum qui tempora et cum. Similique earum officia eius fugit quod illum ullam. Placeat neque omnis enim.\n\nQuos inventore et aut voluptatibus exercitationem rerum vero. Nihil aut quaerat porro voluptatem temporibus quam. Illum eos voluptatem voluptatum sed voluptas voluptas.\n\nOfficiis et necessitatibus et expedita. Consequatur voluptatibus et ut qui quae. Similique consequatur reiciendis facilis consequatur architecto numquam alias fuga.\n\nQui voluptatem laboriosam et eum voluptas ut. Ut totam quia totam ipsam molestias. Eos omnis maxime minus voluptatibus. Repudiandae et molestiae dolor ad nihil accusamus inventore asperiores.\n\nAut soluta similique enim enim qui. Nobis labore unde voluptatem soluta eius sit. Et et repudiandae culpa itaque. Molestiae illum suscipit et odit alias tempora nemo numquam.\n\nNobis sit necessitatibus eos voluptatem. Et quaerat quia omnis ea magnam omnis. Error optio delectus iure tenetur alias sequi. Aliquam magnam et nostrum aut dolor velit.\n\nIusto vel ad dolorem aut. Ducimus saepe ut sed earum qui sit. Similique mollitia expedita quas expedita. Et soluta illum iste voluptas ullam nam. Officiis omnis modi maxime aut possimus libero.\n\nOmnis ut magni rerum labore illo necessitatibus. Eligendi molestias similique dolorem quis. Earum corporis cumque maiores vel ea quibusdam ut. Itaque quis possimus nihil eligendi sed itaque illum quo.', 'Quae incidunt eos assumenda dolorum.', 'accusamus,itaque,nihil', 1, 'img05.jpg', 3),
	(6, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 6', 'post-6', 'Post 6', 'Omnis quo maiores facilis atque. Ut et dolorum quas. Quibusdam laudantium hic pariatur dolores iusto earum. In iusto et rerum dicta iste.', 'Dolores tenetur non sint qui. Qui eum tenetur voluptatem et. Saepe nobis eum accusamus ipsa qui est vitae.\n\nVel esse asperiores et magnam nam et quasi dignissimos. Voluptas veritatis possimus qui itaque et aspernatur distinctio. Velit sint aut repudiandae. Qui qui repellendus non numquam beatae velit sit.\n\nUt labore voluptate ut nemo. Nam dolor aliquam eum nemo incidunt recusandae. Et voluptas nihil molestias aut. Rem soluta magnam est odit. Ducimus quidem eos deleniti illo.\n\nId iure ut reprehenderit ut fugit. Voluptas sed deserunt quas id molestiae non. Laborum tenetur animi id ipsum est nobis.\n\nRem consequatur et temporibus et tempore itaque. Beatae impedit iure voluptas quae.\n\nQuibusdam ratione aut tempora aspernatur blanditiis. Tempore molestiae qui et adipisci rerum veritatis. Maiores aperiam minima aut commodi dolores saepe quis.\n\nEsse harum non recusandae. Aspernatur ut quidem ipsum culpa sit molestiae veritatis et. Architecto qui quidem corrupti. Odio facilis error architecto velit soluta ex.\n\nSimilique quasi dolor sed consequatur et ea a commodi. Quo doloremque alias nisi. Et voluptate eaque qui commodi reiciendis vero fugiat.', 'Quia soluta vero eaque cumque.', 'eos,minima,voluptatem', 1, 'img06.jpg', 3),
	(7, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 7', 'post-7', 'Post 7', 'Blanditiis provident consequatur et labore aut quia officiis. Est placeat aut ea eaque corporis error incidunt. Voluptas id illo ducimus nulla. Repellat quas quo fuga nostrum. Sit et et repudiandae earum laboriosam perferendis ut.', 'Expedita et consectetur qui sit quo voluptatem saepe. Aut nobis non vel voluptatem. Corrupti consectetur sit id sit et laborum eligendi aperiam.\n\nSunt qui dolores voluptas iure. Nesciunt iure consequatur quia praesentium ut officia est. Fugiat commodi ut corrupti saepe voluptatum qui. Sed esse quia voluptas vel delectus asperiores vel. Mollitia voluptatem dolorum nihil sed est et.\n\nId minima non in nostrum delectus placeat eos. Ipsum dolorum autem aut sit.\n\nDolores mollitia reprehenderit aut aut doloremque dolorem saepe maiores. Quasi aut eius ut voluptas occaecati. Ipsum rerum nam atque voluptatem animi quo est.\n\nVoluptate molestiae quam nam est amet. Atque minus eum reprehenderit sequi animi id reprehenderit. Libero cumque mollitia perferendis temporibus.\n\nSoluta sed iusto rerum quia temporibus delectus. Et minus omnis tenetur rerum nemo. Dolores est voluptatibus provident temporibus similique ab voluptas. Ea enim qui consequuntur labore.\n\nDebitis quia enim nostrum aut neque iusto minima. Iusto blanditiis perspiciatis et. Aperiam quis molestias et quo maxime impedit nisi voluptatibus. Quo laudantium eum a aut aut necessitatibus.\n\nConsectetur molestiae incidunt quas in suscipit unde. Enim accusamus nemo iste et. Tempore dicta nemo eos voluptas earum labore rerum dolor.', 'Ipsum unde mollitia maiores at doloribus.', 'consectetur,atque,quasi', 1, 'img07.jpg', 3),
	(8, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 8', 'post-8', 'Post 8', 'Nemo quod cum ut ut magnam beatae vel. Praesentium voluptas hic aut commodi beatae voluptatem saepe eos. Ullam illum cumque eum sunt placeat sapiente libero.', 'Expedita fuga nostrum minima aliquid vel impedit aut placeat. Consequatur sint eos quia ut sed. Rerum maxime voluptas magnam omnis sapiente.\n\nMolestiae maiores fugit vitae quo quia. Eum numquam delectus aliquam eaque. Similique expedita repellat saepe quas possimus.\n\nAssumenda est expedita blanditiis iste nesciunt recusandae. Animi officia et eveniet dolorem fugiat pariatur aut. Rerum et est exercitationem quos et laboriosam. Rerum vel unde nulla amet atque esse.\n\nRatione recusandae et officiis sit ab doloribus. Distinctio fugiat quos aliquam et ut. Quam ut rerum magnam excepturi provident labore itaque quam. Quo voluptate veniam labore ea possimus in.\n\nDoloremque et aut culpa voluptas. Enim debitis qui quos ut. Et sit necessitatibus hic debitis est. Totam reprehenderit itaque dignissimos voluptates. Odio sunt rerum esse.\n\nFugit minus totam et facere repudiandae non. Eius sit voluptatem ut dolorem nisi. Itaque aut explicabo ut dolorem fuga.\n\nCommodi numquam dolorem placeat sunt natus delectus et. Corrupti atque occaecati doloremque error voluptate voluptas. Dolor labore ullam iste ut quas eligendi. Libero velit consequatur amet sint nihil incidunt.\n\nVoluptatem porro at molestias hic a suscipit laudantium. Libero omnis praesentium voluptatum iste. Aperiam temporibus adipisci necessitatibus sed blanditiis blanditiis dolor.', 'Rerum recusandae reiciendis architecto corrupti est repudiandae nobis.', 'consequatur,a,quasi', 1, 'img08.jpg', 3),
	(9, '2024-01-20 13:11:05', '2024-01-20 13:11:05', 'Post 9', 'post-9', 'Post 9', 'Iure quis molestias magni placeat voluptate. Accusamus fugit et laudantium et. Ut natus consequatur enim qui harum. Cum doloremque molestias tempora consequuntur totam mollitia qui et. Fuga blanditiis vero non.', 'Id deleniti optio voluptatem. Illum nam aut voluptatem vel.\n\nIllo aut sunt repudiandae. Cupiditate voluptatum nulla quia consequuntur aut. Dolor quia voluptatem quam in voluptate possimus.\n\nRem neque officia reprehenderit et eligendi voluptas assumenda. Praesentium at adipisci adipisci non nihil incidunt. Aliquam consequatur dignissimos iste facilis sequi totam expedita.\n\nEx perferendis et aspernatur omnis inventore. Quia occaecati voluptas accusantium sint commodi sint.\n\nRepellat reprehenderit non et aliquid asperiores. Necessitatibus molestias illo perferendis repellendus. Ea corporis incidunt nihil voluptatibus amet quam quisquam. Fugiat quis vitae voluptatem et est. Voluptatem illo repudiandae nostrum consequatur.\n\nUllam molestiae nam nesciunt. Officia magni laudantium quod qui ratione consequatur ducimus. Asperiores ut quis ut quia aut in doloremque. Voluptates recusandae repellat nobis voluptatem.\n\nNon harum quam dicta neque nam ullam distinctio. Dolores eligendi ipsam veritatis omnis dolore. Quisquam id provident vero. Non minus vel illo et pariatur sint fugit veniam.\n\nIpsam ratione impedit expedita aliquid ipsam velit ut. Quia corrupti quis eum quidem culpa. Ipsa aperiam tempora quibusdam modi minus laborum. Voluptatem ut incidunt facilis odio.', 'Quasi quos temporibus aut dolores at.', 'quasi,molestiae,repellendus', 1, 'img09.jpg', 3),
	(11, '2024-01-22 09:26:04', '2024-01-23 02:23:23', 'test nouveau article', 'test-nouveau-article', 'test article', 'test extrait bla bla bla', '<p>tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>\r\n\r\n<p>ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>\r\n\r\n<p>ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>\r\n\r\n<p>tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>\r\n\r\n<p>ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>\r\n\r\n<p>ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt</p>', 'artixcle test', 'test,article', 1, 'TriplObanner.png', 1),
	(12, '2024-01-23 02:42:42', '2024-01-23 02:45:08', 'comment coder un blog', 'comment-coder-un-blog', 'comment coder un blog', 'N\'oubliez pas que la création d\'un blog peut être un projet passionnant et gratifiant, mais cela peut aussi être un défi, en particulier si vous êtes nouveau dans le monde du développement web', '<p>&nbsp;</p>\r\n\r\n<p><strong>1. Choisir la technologie de d&eacute;veloppement :</strong> La premi&egrave;re &eacute;tape consiste &agrave; d&eacute;cider de la technologie que vous souhaitez utiliser pour cr&eacute;er votre blog. Vous pouvez opter pour des plateformes de blogging d&eacute;j&agrave; existantes comme WordPress ou Blogger, qui ne n&eacute;cessitent pas de comp&eacute;tences en codage avanc&eacute;es. Cependant, si vous souhaitez cr&eacute;er un blog personnalis&eacute;, vous devrez utiliser des langages de programmation tels que HTML, CSS, JavaScript et PHP.</p>\r\n\r\n<p><strong>2. Concevoir la structure du blog :</strong> Avant de commencer &agrave; coder, il est essentiel de planifier la structure de votre blog. D&eacute;terminez combien de pages vous souhaitez inclure (par exemple : page d&#39;accueil, articles de blog, &agrave; propos, contact) et comment vous voulez organiser votre contenu.</p>\r\n\r\n<p><strong>3. Cr&eacute;er la base de donn&eacute;es :</strong> Si vous envisagez un blog avec des articles et des commentaires, vous devrez cr&eacute;er une base de donn&eacute;es pour stocker ces informations. Des syst&egrave;mes de gestion de bases de donn&eacute;es tels que MySQL peuvent &ecirc;tre utilis&eacute;s &agrave; cette fin.</p>\r\n\r\n<p><strong>4. D&eacute;velopper la partie front-end :</strong> Utilisez HTML pour cr&eacute;er la structure de vos pages web. Ensuite, utilisez CSS pour styliser votre blog en lui donnant l&#39;apparence souhait&eacute;e. Vous pouvez &eacute;galement utiliser des frameworks CSS tels que Bootstrap pour simplifier le processus de conception.</p>\r\n\r\n<p><strong>5. D&eacute;velopper la partie back-end :</strong> Utilisez des langages de programmation comme PHP, Python, ou Ruby pour cr&eacute;er la logique du blog. Cela comprend la gestion des articles, des commentaires, des utilisateurs (si vous avez des comptes d&#39;utilisateurs), et la communication avec la base de donn&eacute;es.</p>\r\n\r\n<p><strong>6. Ajouter des fonctionnalit&eacute;s :</strong> Personnalisez votre blog en ajoutant des fonctionnalit&eacute;s telles que la recherche d&#39;articles, la gestion des commentaires, la navigation conviviale, etc. Vous pouvez &eacute;galement int&eacute;grer des plugins ou des biblioth&egrave;ques pour am&eacute;liorer les fonctionnalit&eacute;s de votre blog.</p>\r\n\r\n<p><strong>7. Tester et d&eacute;boguer :</strong> Avant de publier votre blog, assurez-vous de tester toutes ses fonctionnalit&eacute;s. Recherchez des erreurs et assurez-vous que tout fonctionne correctement.</p>\r\n\r\n<p><strong>8. H&eacute;bergement et nom de domaine :</strong> Pour rendre votre blog accessible en ligne, vous devrez acheter un nom de domaine et souscrire &agrave; un service d&#39;h&eacute;bergement web. Assurez-vous que le serveur d&#39;h&eacute;bergement prend en charge les technologies que vous avez utilis&eacute;es pour coder votre blog.</p>\r\n\r\n<p><strong>9. Publier votre blog :</strong> Une fois que tout est pr&ecirc;t, vous pouvez publier votre blog sur Internet et le rendre accessible au public.</p>\r\n\r\n<p><strong>10. Mettre &agrave; jour et maintenir :</strong> N&#39;oubliez pas de mettre &agrave; jour r&eacute;guli&egrave;rement votre blog en ajoutant de nouveaux articles et en effectuant des op&eacute;rations de maintenance pour garantir son bon fonctionnement.</p>\r\n\r\n<p>N&#39;oubliez pas que la cr&eacute;ation d&#39;un blog peut &ecirc;tre un projet passionnant et gratifiant, mais cela peut aussi &ecirc;tre un d&eacute;fi, en particulier si vous &ecirc;tes nouveau dans le monde du d&eacute;veloppement web. N&#39;h&eacute;sitez pas &agrave; poser des questions sp&eacute;cifiques sur votre projet, et je serai ravi de vous aider davantage dans votre voyage vers la cr&eacute;ation de votre propre blog.</p>', 'comment coder un blog', 'blog,code,test', 1, 'OIG.T0GeC0fYYKYHsrB_.jpg', 17);

-- Listage des données de la table blogtomboszko.post_tag : ~33 rows (environ)
INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
	(1, 1, 5),
	(2, 1, 1),
	(3, 1, 3),
	(4, 2, 1),
	(5, 2, 2),
	(6, 2, 5),
	(7, 3, 3),
	(8, 3, 5),
	(9, 3, 2),
	(10, 3, 6),
	(11, 4, 5),
	(12, 4, 4),
	(13, 4, 3),
	(14, 4, 2),
	(15, 5, 6),
	(16, 5, 5),
	(17, 5, 4),
	(18, 5, 2),
	(19, 6, 1),
	(20, 6, 6),
	(21, 6, 4),
	(22, 7, 3),
	(23, 7, 1),
	(24, 7, 2),
	(25, 8, 2),
	(26, 8, 5),
	(27, 8, 4),
	(28, 9, 1),
	(29, 9, 2),
	(30, 9, 5),
	(31, 9, 6),
	(34, 11, 1),
	(35, 11, 2),
	(36, 12, 7),
	(37, 12, 8),
	(38, 12, 9),
	(39, 12, 10);

-- Listage des données de la table blogtomboszko.tags : ~6 rows (environ)
INSERT INTO `tags` (`id`, `tag`, `slug`) VALUES
	(1, 'Tag1', 'tag1'),
	(2, 'Tag2', 'tag2'),
	(3, 'Tag3', 'tag3'),
	(4, 'Tag4', 'tag4'),
	(5, 'Tag5', 'tag5'),
	(6, 'Tag6', 'tag6'),
	(7, 'Test', 'test'),
	(8, 'Blockchain', 'blockchain'),
	(9, 'Mot', 'mot'),
	(10, 'Web3', 'web3');

-- Listage des données de la table blogtomboszko.users : ~13 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `valid`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Mrs. Clare Rath Jr.', 'quigley.carolyne@example.com', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 1, 'htKcloQQpdi36muGk59puRokKv1XOER4M9jIQ9fhhXEPvLxFD5YHiLiAI9tG', '2024-01-20 13:11:05', '2024-01-22 15:07:15'),
	(2, 'Mr. Mason Steuber', 'leonie.crist@example.org', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'PXAelpRP5L', '2024-01-20 13:11:05', '2024-01-20 13:11:05'),
	(3, 'Bernita testmodif', 'ruecker.adell@example.org', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'clscsjElJj', '2024-01-20 13:11:05', '2024-01-22 11:55:39'),
	(4, 'Carley Goodwin', 'morar.talia@example.net', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, '6p7Xo2SVyndmlEBIoP2qsP2VC6sOim8iHSnEIY8keCTfWF2IcrfRM1ybnZof', '2024-01-20 13:11:05', '2024-01-20 13:11:05'),
	(5, 'Emilio Frami', 'murray.jamison@example.net', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, '5WRQnzL6Oc', '2024-01-20 13:11:05', '2024-01-20 13:11:05'),
	(6, 'Albertha Schamberger', 'bspencer@example.net', '2024-01-20 13:11:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, '7PK31O7nco', '2024-01-20 13:11:05', '2024-01-20 13:11:05'),
	(8, 'test event b', 'test@mail.com', NULL, '$2y$10$AHvnJNN.TyyvhSr/isrSj.QtoVgV9eqv9LOnbtKQT1ee8x/iQtFs6', 'user', 1, NULL, '2024-01-20 14:23:27', '2024-01-22 12:17:16'),
	(11, 'Winnifred Kassulke', 'gregory26@example.com', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 1, 'EynIl7rZPT', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(12, 'Clay Sauer', 'bergnaum.christop@example.net', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'TUL3v35K9b', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(13, 'Ms. Erna Schiller', 'ericka.haley@example.org', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'DCdCMWI6Ie', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(14, 'Geovanni Stehr', 'rstreich@example.org', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, 'z2Jmo7o11K', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(15, 'Ms. Bessie Borer', 'bdicki@example.net', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, 'wbslZGluI7', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(16, 'Audra Schuster', 'ankunding.zella@example.net', '2024-01-22 17:24:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, 'NMb0wEgzTc', '2024-01-22 17:24:18', '2024-01-22 17:24:18'),
	(17, 'Tom Boszko', 'tgomree@hotmail.com', '2024-01-23 03:19:08', '$2y$10$A01pMDtScuwr.qxsz4Z21OW.EyWDcB4ZELz4R/dc4S.4egYPMNVN6', 'admin', 1, NULL, '2024-01-23 02:17:17', '2024-01-23 02:22:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
