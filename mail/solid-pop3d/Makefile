# $OpenBSD: Makefile,v 1.6 2000/08/29 16:52:13 danh Exp $

VERSION=	0.15
DISTNAME=	solid-pop3d-${VERSION}
CATEGORIES=	mail
NEED_VERSION=	1.319
MASTER_SITES=	http://solidpop3d.pld.org.pl/ \
		ftp://ftp.rudykot.pl/pub/solidpop3d/ \
		ftp://sedez.iq.pl/pub/solidpop3d/ \
		ftp://dione.ids.pl/pub/solidpop3d/

HOMEPAGE=	http://solidpop3d.pld.org.pl/

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	apop ipv6
FLAVOR?=

SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--localstatedir="/var/spool/spop3d" \
			--mandir="${PREFIX}/man" --enable-last \
			--enable-bulletins --enable-nonip --enable-resolve \
			--enable-connect --enable-logextend --enable-statistics 

.if ${FLAVOR:L:Mapop}
CONFIGURE_ARGS+= 	--enable-userconfig --enable-apop
.else
CONFIGURE_ARGS+= 	--disable-userconfig --disable-apop
.endif

.if ${FLAVOR:L:Mipv6}
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif

.include <bsd.port.mk>
