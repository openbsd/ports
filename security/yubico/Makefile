# $OpenBSD: Makefile,v 1.3 2019/04/29 16:27:52 sthen Exp $

  SUBDIR =
# SUBDIR += libu2f-host		# missing dep: hidapi
# SUBDIR += libu2f-server	# test failures
# SUBDIR += libykneomgr		# pcscd doesn't work
  SUBDIR += yubico-c
  SUBDIR += yubico-c-client
  SUBDIR += yubico-piv-tool	# does pcscd work?
# SUBDIR += yubikey-neo-manager	# missing dep: PySide, needs libu2f-host
  SUBDIR += yubikey-personalization
  SUBDIR += yubikey-personalization-gui

.include <bsd.port.subdir.mk>
