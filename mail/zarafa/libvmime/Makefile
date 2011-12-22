# $OpenBSD: Makefile,v 1.22 2011/12/22 17:10:04 ajacoutot Exp $

COMMENT=	modified libvmime library for Zarafa

VMIME_V=	0.9.1
DISTNAME=	libvmime-${VMIME_V}
PKGNAME=	zarafa-libvmime-${VMIME_V}
EPOCH=		0
REVISION=	5

EXTRACT_SUFX=	.tar.bz2

WRKDIST=	${WRKDIR}/libvmime-${VMIME_V}

PATCH_DIST_STRIP= -p1

PATCHFILES= \
	vmime-0.8.1-attachfnamelen.diff:0 \
	vmime-0.9.2-header-value-on-next-line.diff:0 \
	vmime-0.8.1-unicode-1-1-utf-7-charset.diff:0 \
	vmime-0.9.0-undisclosed-recipients.diff:0 \
	vmime-0.9.2-infinite-loop.diff:0 \
	vmime-flush-iconv.diff:0 \
	vmime-fullname-without-email-address.diff:0 \
	vmime-highchar-filename.diff:0 \
	vmime-empty-bodypart.diff:0 \
	vmime-mixed-qp-in-parameter.diff:0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmime/}
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

.include <bsd.port.mk>
