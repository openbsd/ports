# $OpenBSD: Makefile,v 1.8 2002/10/29 01:30:41 naddy Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=	"French dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-french-dict-19961217
DISTNAME=		French

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes
NO_REGRESS=		Yes

DICNAME=		Fprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
