# $OpenBSD: Makefile,v 1.2 2007/08/06 21:17:43 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		International Components for Unicode

DISTNAME=		icu4c-3_6-src
PKGNAME=		icu4c-3.6p0
SO_VERSION=		0.0
.for _lib in icudata icui18n icuio icule iculx icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
CATEGORIES=		textproc devel

HOMEPAGE=		http://www.icu-project.org

MAINTAINER=		Vincent Gross <marin.shadok@gmail.com>

# ICU
# http://source.icu-project.org/repos/icu/icu/trunk/license.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=icu/} \
			ftp://ftp.software.ibm.com/software/globalization/icu/3.6/
EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		concurrent

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-renaming

WRKDIST=		${WRKDIR}/icu
WRKSRC=			${WRKDIST}/source

MAKE_FLAGS=		SO_TARGET_VERSION=${SO_VERSION}
FAKE_FLAGS=		SO_TARGET_VERSION=${SO_VERSION} \
			${DESTDIRNAME}=${WRKINST}

.include <bsd.port.mk>
