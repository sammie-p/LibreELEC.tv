# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="pvr.mediaportal.tvserver"
PKG_VERSION="931afab54115f29fbfe013ebb6c48adb2ce6f859"
PKG_SHA256="cf043c26195a1ec6098509f2f81c3dd028435b121b04e6480c19f0afa7affc51"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodi.tv"
PKG_URL="https://github.com/kodi-pvr/pvr.mediaportal.tvserver/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform"
PKG_SECTION=""
PKG_SHORTDESC="pvr.mediaportal.tvserver"
PKG_LONGDESC="pvr.mediaportal.tvserver"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.pvrclient"

pre_configure_target() {
  CXXFLAGS="$CXXFLAGS -Wno-narrowing -DXLOCALE_NOT_USED"
}