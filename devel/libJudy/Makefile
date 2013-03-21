# $OpenBSD: Makefile,v 1.13 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=		general purpose dynamic array

DISTNAME=		Judy-1.0.4
PKGNAME=		lib${DISTNAME}
REVISION = 		0
SHARED_LIBS +=	Judy                 1.4      # .1.4
CATEGORIES=		devel

HOMEPAGE=		http://judy.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=judy/}

CONFIGURE_STYLE=	GNU
USE_GMAKE=		Yes
USE_GROFF =		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/libJudy

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/src/apps/demo; tar cf - * | tar xf - -C ${EXAMPLESDIR}
	@sed s,y0y0,${LOCALBASE},g < ${WRKSRC}/src/apps/demo/run_demo > \
		${EXAMPLESDIR}/run_demo
	
.include <bsd.port.mk>

.if ${PROPERTIES:Mlp64}
CONFIGURE_ARGS+=--enable-64-bit
.else
CONFIGURE_ARGS+=--enable-32-bit
.endif
