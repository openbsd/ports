# $OpenBSD: Makefile,v 1.9 2003/06/13 14:40:48 sturm Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=	"French dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-french-dict-20011029
DISTNAME=		French

RUN_DEPENDS=		${DICT_RUN_DEPENDS}

NO_BUILD=		Yes
NO_REGRESS=		Yes

DICNAME=		Fprinc

do-install:
	${dict_install_frag}

.include <bsd.port.mk>
