# $OpenBSD: Makefile,v 1.6 2001/10/02 20:18:59 heko Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=	"French dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-french-dict-19961217
DISTNAME=		French
NEED_VERSION=		1.454

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes

DICNAME=		Fprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
