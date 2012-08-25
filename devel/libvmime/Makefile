# $OpenBSD: Makefile,v 1.15 2012/08/25 14:45:08 ajacoutot Exp $

COMMENT=	C++ class library for working with Internet mail

VMIME_V=	0.9.2
DISTNAME=	libvmime-${VMIME_V}+svn603
EXTRACT_SUFX=	.tar.bz2

PKGNAME=	libvmime-${VMIME_V}
REVISION=	1

SHARED_LIBS+=  vmime    2.0     # 0.0

### needed for mail/zarafa (FLAVOR is possible if needed in the future)
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmime/}
MASTER_SITES_ZARAFA=http://download.zarafa.com/community/final/7.1/7.1.0-36420/sourcecode/
MASTER_SITES=	${MASTER_SITES_ZARAFA}
MASTER_SITES0=	${MASTER_SITES_ZARAFA:=/vmime-patches/}
PATCH_DIST_STRIP= -p1
PATCHFILES= \
	vmime-0.9.2-header-value-on-next-line.diff:0 \
	vmime-0.9.2-qp-in-buffers.diff:0 \
	vmime-mixed-qp-in-parameter.diff:0
###

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@bsdfrog.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m stdc++

WRKDIST=	${WRKDIR}/libvmime-${VMIME_V}

# our old gcc is <cxx0x; so "-pedantic" warnings are turned into errors
CFLAGS +=	-fpermissive

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EXTRA_CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# security/libgsasl; not real need for this so far
CONFIGURE_ARGS += --disable-sasl

# XXX Apache crashes with php-mapi from mail/zarafa/zarafa,-webaccess
# /usr/sbin/httpd:/usr/local/lib/libvmime.so.2.0: undefined symbol '_ZN5vmime3net12serviceInfosD2Ev'
CONFIGURE_ARGS += --disable-tls

pre-configure:
	perl -pi -e 's,-l\$${ost_cv_thread_library},-\$${ost_cv_thread_library},g;' \
		-e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
