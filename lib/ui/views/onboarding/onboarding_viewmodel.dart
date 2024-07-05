import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/model/onboarding_data.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends IndexTrackingViewModel {
  //Hold the Onboarding Data
  List<OnboardingDataModel> onboardingData = [
    OnboardingDataModel(
      image: AppImages.onboardingImageOne,
      title: S.current.onboarding_title_one,
      subtitle: S.current.onboarding_subtitle_one,
    ),
    OnboardingDataModel(
      image: AppImages.onboardingImageTwo,
      title: S.current.onboarding_title_two,
      subtitle: S.current.onboarding_subtitle_three,
    ),
    OnboardingDataModel(
      image: AppImages.onboardingImageThree,
      title: S.current.onboarding_title_one,
      subtitle: S.current.onboarding_subtitle_three,
    ),
  ];

  void getStarted() {}
}
