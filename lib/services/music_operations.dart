import '../models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Bill Withers',
          'https://is1-ssl.mzstatic.com/image/thumb/Video115/v4/ff/6d/ce/ff6dce72-c7ad-9a47-9128-ec2c89b107f9/Jobfac684c1-e9f4-47d2-b3e4-2cbedf4f5dc1-112807822-PreviewImage_preview_image_nonvideo_sdr-Time1620158097887.png/316x316bb.webp', //cover
          "Ain't No Sunshine",
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/f4/12/25/f41225b2-20e9-b869-5374-5ddfb1be8a54/mzaf_8188618711307079160.plus.aac.p.m4a'), //çalma linki
      Music(
          'Nina Simone',
          'https://is1-ssl.mzstatic.com/image/thumb/Video125/v4/03/38/49/033849d1-3d2e-0ead-992b-20d949f021f5/Job19dd5384-d2aa-4a8c-a14a-845a3a0e3291-118855873-PreviewImage_preview_image_nonvideo_sdr-Time1627935465745.png/316x316bb.webp',
          'Feeling Good',
          "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/c0/47/29/c047291f-4058-8b2b-99ba-58f2effb80e3/mzaf_11263400070024940711.plus.aac.p.m4a"),
      Music(
          'Lana Del Rey ',
          'http://www.the-peak.ca/wp-content/uploads/2014/07/LanaDelRey-WKTDJ.jpg',
          'West Coast ',
          "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/ed/52/09/ed520999-13e7-5731-c9b2-f3f0fb6553ac/mzaf_16001392133890342236.plus.aac.p.m4a"),
      Music(
          'Buena Vista Social Club',
          'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/ed/eb/47/edeb4775-1eff-e886-4e88-795f34a3fc97/4050538455618.jpg/316x316bb.webp',
          'Chan Chan',
          "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/53/b5/9d/53b59dbd-42da-b6a1-d8f0-4ddc8f76fc96/mzaf_3372688085864147773.plus.aac.p.m4a")
    ];
  }
}
