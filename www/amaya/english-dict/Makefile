# $OpenBSD: Makefile,v 1.11 2007/09/15 20:38:20 merdely Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=	English dictionary for the Amaya browser/page composer

PKGNAME=		amaya-english-dict-20011029
DISTNAME=		English

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

DICNAME=		Eprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
