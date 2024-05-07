TABLE ?=
V ?=
DISTNAME ?=	table-${TABLE}-${V}
PKGNAME ?=	opensmtpd-${DISTNAME}

CATEGORIES +=	mail

HOMEPAGE ?=	https://github.com/OpenSMTPD/table-${TABLE}/

MAINTAINER ?=	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

SITES ?= https://github.com/OpenSMTPD/table-${TABLE}/releases/download/${V}/

CONFIGURE_STYLE ?= gnu
