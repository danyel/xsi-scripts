use YAML::Tiny;

my $yaml = YAML::Tiny->new({});
push @$yaml, ['foor'];

$yaml->write('data.yml')