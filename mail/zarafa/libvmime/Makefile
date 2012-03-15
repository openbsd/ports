# $OpenBSD: Makefile,v 1.24 2012/03/15 17:04:31 ajacoutot Exp $

COMMENT=	modified libvmime library for Zarafa

VMIME_V=	0.9.2
DISTNAME=	libvmime-${VMIME_V}+svn603
PKGNAME=	zarafa-libvmime-${VMIME_V}
EPOCH=		0

REVISION=	0

EXTRACT_SUFX=	.tar.bz2

WRKDIST=	${WRKDIR}/libvmime-${VMIME_V}

PATCH_DIST_STRIP= -p1

PATCHFILES= \
	vmime-0.9.2-header-value-on-next-line.diff:0 \
	vmime-0.9.2-qp-in-buffers.diff:0 \
	vmime-mixed-qp-in-parameter.diff:0

MASTER_SITES0=	${MASTER_SITES_ZARAFA:=/vmime-patches/}

CATEGORIES=	mail devel

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. devel/libvmime).
SHARED_LIBS+=  vmime-zarafa    2.0     # .0.0

WANTLIB +=	m stdc++

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EXTRA_CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--includedir=${PREFIX}/include/zarafa \
		--enable-messaging \
		--enable-messaging-proto-pop3 \
		--enable-messaging-proto-smtp \
		--enable-messaging-proto-imap \
		--enable-messaging-proto-maildir \
		--enable-messaging-proto-sendmail \
		--enable-platform-posix \
		--disable-sasl \
		--disable-tls

pre-configure:
	perl -pi -e 's,-l\$${ost_cv_thread_library},-\$${ost_cv_thread_library},g;' \
		-e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
