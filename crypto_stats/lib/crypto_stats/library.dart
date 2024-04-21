// ignore_for_file: directives_ordering, unused_import

library ui.library;

import 'dart:convert';
import 'dart:core';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:crypto_stats/generated/fonts.gen.dart';
import 'package:crypto_stats/generated/assets.gen.dart';
import 'package:crypto_stats/l10n/l10n.dart';
import 'package:crypto_stats/Core/cubit/crypto_assets_cubit.dart';
import 'package:crypto_stats/Core/cubit/live_prices_cubit.dart';
import 'package:crypto_stats/Core/models/trade.dart';

part 'view/crypto_stats_page.dart';
part 'view/widgets/profile.dart';
part 'view/widgets/balance_card.dart';
part 'view/widgets/crypto_assets.dart';
part 'view/widgets/cached_circle_avatar.dart';
part 'view/widgets/live_prices.dart';
