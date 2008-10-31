# $OpenBSD: Makefile,v 1.6 2008/10/31 09:56:15 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		International Components for Unicode

DISTNAME=		icu4c-4_0-src
PKGNAME=		icu4c-4.0
SO_VERSION=		1.0
.for _lib in icudata icui18n icuio icule iculx icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
CATEGORIES=		textproc devel

HOMEPAGE=		http://www.icu-project.org

MAINTAINER=		Vincent Gross <dermiste@gmail.com>

# ICU
# http://source.icu-project.org/repos/icu/icu/trunk/license.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread stdc++

MASTER_SITES=		ftp://ftp.software.ibm.com/software/globalization/icu/4.0/ \
			${MASTER_SITE_SOURCEFORGE:=icu/}
EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-renaming

WRKDIST=		${WRKDIR}/icu
WRKSRC=			${WRKDIST}/source

MAKE_FLAGS=		SO_TARGET_VERSION=${SO_VERSION}

.include <bsd.port.mk>
