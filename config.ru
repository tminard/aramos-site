use Rack::Static,
  :urls => ["/img", "/js", "/css"],
  :root => "Public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'Public, max-age=86400' 
    },
    File.open('Public/index.html', File::RDONLY)
  ]
}