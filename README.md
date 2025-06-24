### How to use
* `make` to start `mariadb`, `wordpress` and `nginx`
* `make down` to docker compose down

### Access
`https://localhost:443`

### 注意点
* 課題ではvoluemeは`bind`だが、`volume`に変更
* 課題では、`/etc/hosts`において`mogawa.42.fr`でアクセスするようにするが、なしにしている
* 初回は`.env`を持ってくる必要がある
