# $OpenBSD: Makefile,v 1.13 2011/03/11 08:43:55 ajacoutot Exp $

COMMENT=	modified libvmime library for Zarafa

DISTNAME=	libvmime-0.7.1
PKGNAME=	zarafa-${DISTNAME}
EXTRACT_SUFX=	.tar.bz2

REVISION=	9

PATCH_DIST_STRIP= -p1

PATCHFILES= \
	vmime-charset-catch.diff:0 \
	vmime-missing-boundary.diff:0 \
	vmime-allow-no-recips-and-senders.diff:0 \
	vmime-bmoted-printable.diff:0 \
	vmime-strip-header-endspaces-and-header-end.diff:0 \
	vmime-attachfnamelen.diff:0 \
	vmime-remove-bcc.diff:0 \
	vmime-mdn-disposition.diff:0 \
	vmime-mdn-final-recipient.diff:0 \
	vmime-broken-locale-error.diff:0 \
	vmime-qp-starts-on-second-line.diff:0 \
	vmime-quoted-printable-specials.diff:0 \
	vmime-header-value-on-next-line.diff:0 \
	vmime-oe-compatibility.diff:0 \
	vmime-unicode-1-1-utf-7-charset.diff:0 \
	vmime-out-of-bounds-copy.diff:0 \
	vmime-default-transfer-encoding.diff:0 \
	vmime-contentid-without-at.diff:0 \
	vmime-socket-backport-and-timeout-fix.diff:0 \
	vmime-double-empty-boundary.diff:0 \
	vmime-quoted-printable-encode-questionmark.diff:0 \
	vmime-charset-output-buffer-full.diff:0 \
	vmime-gcc-4.3-support.diff:0 \
	vmime-timezone-name.diff:0 \
	vmime-socket-tcp-nodelay.diff:0 \
	vmime-threading-remove-static_non-abi-change.diff:0 \
	vmime-gcc-4.4-support.diff:0 \
	vmime-plain-bodycopy.diff:0 \
	vmime-address-parse-encoded.diff:0 \
	vmime-fullname-without-email-address.diff:0 \
	vmime-strip-spaces-parameterized-headers.diff:0 \
	vmime-allow-alternate-encodings.diff:0

MASTER_SITES0=	${MASTER_SITES:=/vmime-patches/}

CATEGORIES=	mail devel

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. devel/libvmime).
SHARED_LIBS+=	vmime-zarafa	1.0	# .7.1

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
		--enable-platform-posix

.include <bsd.port.mk>
