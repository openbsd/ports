#
# $OpenBSD: Makefile,v 1.1.1.1 2000/05/26 01:51:34 espie Exp $
#

DISTNAME=       	solid-pop3d-0.14
CATEGORIES=		net mail
MAINTAINER=		danh@nfol.com

MASTER_SITES=		http://solidpop3d.pld.org.pl/

LICENCE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HAS_CONFIGURE=	 	Yes
CONFIGURE_ARGS+=	--sysconfdir='/etc'
CONFIGURE_ARGS+=	--localstatedir="/var/spool/spop3d" 
CONFIGURE_ARGS+=	--enable-last
CONFIGURE_ARGS+=	--enable-bulletins
CONFIGURE_ARGS+=	--enable-nonip

FAKE=			Yes
FAKE_FLAGS+=		prefix='${WRKINST}${PREFIX}'

.include <bsd.port.mk>
