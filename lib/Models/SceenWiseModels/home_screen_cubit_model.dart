class HomeCubitModel {
  HomeCubitModel({
    this.count = 0,
    this.confirmPassVisibility = false,
    this.currentPassVisibility = false,
    this.newPassVisibility = true,
  });

  int count;
  bool currentPassVisibility;
  bool newPassVisibility;
  bool confirmPassVisibility;

  HomeCubitModel copyWith({
    int? count,
    bool? currentPassVisibility,
    bool? newPassVisibility,
    bool? confirmPassVisibility,
  }) {
    return HomeCubitModel(
      count: count ?? this.count,
      currentPassVisibility:
          currentPassVisibility ?? this.currentPassVisibility,
      newPassVisibility: newPassVisibility ?? this.newPassVisibility,
      confirmPassVisibility:
          confirmPassVisibility ?? this.confirmPassVisibility,
    );
  }
}
