# $OpenBSD: Makefile,v 1.6 2001/10/02 20:18:59 heko Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=	"English dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-english-dict-19961207
DISTNAME=		English
NEED_VERSION=		1.454

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes

DICNAME=		Eprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
