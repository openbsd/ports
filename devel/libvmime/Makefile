# $OpenBSD: Makefile,v 1.6 2009/10/11 13:18:36 ajacoutot Exp $

COMMENT=	C++ class library for working with Internet mail

DISTNAME=	libvmime-0.9.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel mail

SHARED_LIBS+=	vmime	1.0	# .0.0

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmime/}

WANTLIB=	gcrypt gpg-error tasn1 z

MODULES=	devel/gettext

LIB_DEPENDS=	gnutls.>=14::security/gnutls

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		EXTRA_CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-tls \
		--enable-messaging-proto-pop3 \
		--enable-messaging-proto-smtp \
		--enable-messaging-proto-imap \
		--enable-messaging-proto-maildir \
		--enable-messaging-proto-sendmail \
		--enable-platform-posix

# SASL support needs GNU SASL
CONFIGURE_ARGS+= --disable-sasl

# XXX check on update whether this is still necessary
post-extract:
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${WRKDIR}/bin

.include <bsd.port.mk>
