# $OpenBSD: Makefile,v 1.10 2004/02/01 20:22:18 sturm Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=	"French dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-french-dict-20011029
DISTNAME=		French

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

DICNAME=		Fprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
