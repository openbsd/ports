# $OpenBSD: Makefile,v 1.5 2009/10/20 22:32:26 ajacoutot Exp $

COMMENT=	modified libvmime library for Zarafa

DISTNAME=	libvmime-0.7.1
PKGNAME=	zarafa-${DISTNAME}p3

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		zarafa-vmime-patches.tar.gz

CATEGORIES=	mail devel

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. devel/libvmime).
SHARED_LIBS+=	vmime-zarafa	1.0	# .7.1

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	http://developer.zarafa.com/download/

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

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

# apply zarafa provided patches at pre-configure to not mess with our own
pre-configure:
	# doesn't apply and we use gcc3 anyway
	rm ${WRKDIR}/vmime-gcc-4.4-support.diff
	cd ${WRKSRC} && \
		for i in ${WRKDIR}/*.diff; do patch -z .beforezarafa -s -E -p1 < $$i; done
 
.include <bsd.port.mk>
