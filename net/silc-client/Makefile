# $OpenBSD: Makefile,v 1.1.1.1 2002/01/16 21:22:34 naddy Exp $

COMMENT=	"Secure Live Internet Conferencing (SILC) client"

DISTNAME=	silc-client-0.7.2
CATEGORIES=	net
NEED_VERSION=	1.504
HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		ftp://ftp.au.silcnet.org/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

LIB_DEPENDS=    glib.1.2,gmodule.1.2::devel/glib

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-helpdir=${PREFIX}/share/silc/help \
		--with-docdir=${PREFIX}/share/doc/silc \
		--with-etcdir=${SYSCONFDIR}/silc \
		--disable-asm
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		silc_etcdir=${PREFIX}/share/examples/silc-client

.include <bsd.port.mk>
