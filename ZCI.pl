my $url = 'http://www.tennisabstract.com/';
    # Just an example: the URL for the most recent /Fresh Air/ show

  use LWP::Simple;
  my $content = get $url;
  die "Couldn't get $url" unless defined $content;

  # Then go do things with $content, like this:

  if($content =~ /Player Schedules(.*?)<\/table>/si) {
    print "They're talking about jazz today on Fresh Air!\n";
  } else {
    print "Fresh Air is apparently jazzless today.\n";
  }
  
  # @dates = $1 =~ /(\d{4}-\d{2}-\d{2})/gsi;
  # print "@dates";
  open (MYFILE, '>TennisAbstractSchedule.html'); print MYFILE $1; close (MYFILE);
  
  #print "\n$content\n";