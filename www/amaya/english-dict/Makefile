# $OpenBSD: Makefile,v 1.7 2001/11/13 22:13:24 espie Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=	"English dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-english-dict-19961207
DISTNAME=		English
NEED_VERSION=		1.496

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes

DICNAME=		Eprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
