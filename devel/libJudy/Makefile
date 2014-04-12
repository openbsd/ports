# $OpenBSD: Makefile,v 1.14 2014/04/12 21:17:13 sthen Exp $

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
USE_GROFF=		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/libJudy

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/src/apps/demo; tar cf - * | tar xf - -C ${EXAMPLESDIR}
	@${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
	    -c ${WRKSRC}/src/apps/demo/run_demo ${EXAMPLESDIR}/run_demo

.include <bsd.port.mk>
