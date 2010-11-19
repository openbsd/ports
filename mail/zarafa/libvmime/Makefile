# $OpenBSD: Makefile,v 1.10 2010/11/19 07:23:10 espie Exp $

COMMENT=	modified libvmime library for Zarafa

VMIME=		libvmime-0.7.1
PKGNAME=	zarafa-${VMIME}
REVISION=	6

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

WRKDIST=	${WRKDIR}/${VMIME}

post-extract:
	${BZIP2} -dc ${WRKDIR}/${DISTNAME}/${VMIME}.tar.bz2 | ${TAR} xf - -C ${WRKDIR}

# apply zarafa provided patches at pre-configure to not mess with our own
pre-configure:
	cd ${WRKSRC} && \
		for i in ${WRKDIR}/${DISTNAME}/vmime-patches/*.diff; do patch -z .beforezarafa -s -E -p1 < $$i; done
 
.include <bsd.port.mk>
