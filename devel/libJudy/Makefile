# $OpenBSD: Makefile,v 1.2 2006/01/02 18:15:53 bernd Exp $

COMMENT=		"general purpose dynamic array"

VERSION=		1.0.1
DISTNAME=		Judy-${VERSION}
PKGNAME=		libJudy-${VERSION}p0
SHARED_LIBS=		Judy 1.1
MODGNU_SHARED_LIBS=	Judy ''
CATEGORIES=		devel

HOMEPAGE=		http://judy.sourceforge.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=judy/}

CONFIGURE_STYLE=	GNU
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

FAKE_FLAGS=		${MAKE_FLAGS} DESTDIR=${WRKINST}

EXAMPLESDIR=		${PREFIX}/share/examples/libJudy

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/src/apps/demo; tar cf - * | tar xf - -C ${EXAMPLESDIR}
	@sed s,y0y0,${LOCALBASE},g < ${WRKSRC}/src/apps/demo/run_demo > \
		${EXAMPLESDIR}/run_demo
	
.include <bsd.port.mk>

.for m in ${MACHINE_ARCH}
.if ${LP64_ARCHS:L:M$m}
CONFIGURE_ARGS+=--enable-64-bit
.else
CONFIGURE_ARGS+=--enable-32-bit
.endif
.endfor
