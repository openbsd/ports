# $OpenBSD: Makefile,v 1.8 2002/10/29 01:30:41 naddy Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=	"English dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-english-dict-19961207
DISTNAME=		English

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes
NO_REGRESS=		Yes

DICNAME=		Eprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
