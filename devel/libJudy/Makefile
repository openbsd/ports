# $OpenBSD: Makefile,v 1.16 2015/04/06 22:10:56 schwarze Exp $

COMMENT=		general purpose dynamic array

DISTNAME=		Judy-1.0.5
WRKDIST=		${WRKDIR}/${DISTNAME:L}
PKGNAME=		lib${DISTNAME}
CATEGORIES=		devel

SHARED_LIBS +=	Judy                 1.4      # .1.4

HOMEPAGE=		http://judy.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=judy/}

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/libJudy

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/src/apps/demo; tar cf - * | tar xf - -C ${EXAMPLESDIR}
	@${SUBST_DATA} ${WRKSRC}/src/apps/demo/run_demo ${EXAMPLESDIR}/run_demo

.include <bsd.port.mk>
