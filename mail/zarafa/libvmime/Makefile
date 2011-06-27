# $OpenBSD: Makefile,v 1.16 2011/06/27 14:31:36 ajacoutot Exp $

COMMENT=	modified libvmime library for Zarafa

VMIME_V=	0.9.1
DISTNAME=	libvmime-${VMIME_V}
PKGNAME=	zarafa-libvmime-${VMIME_V}
EXTRACT_SUFX=	.tar.bz2

REVISION=	0
EPOCH=		0

WRKDIST=	${WRKDIR}/libvmime-${VMIME_V}

PATCH_DIST_STRIP= -p1

PATCHFILES= \
	vmime-0.8.1-attachfnamelen.diff:0 \
	vmime-0.8.1-charset-catch.diff:0 \
	vmime-0.8.1-header-value-on-next-line.diff:0 \
	vmime-0.8.1-unicode-1-1-utf-7-charset.diff:0 \
	vmime-0.9.0-undisclosed-recipients.diff:0 \
	vmime-0.9.2-infinite-loop.diff:0 \
	vmime-flush-iconv.diff:0 \
	vmime-fullname-without-email-address.diff:0 \
	vmime-highchar-filename.diff:0

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
