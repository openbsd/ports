# $OpenBSD: Makefile,v 1.2 2000/06/20 20:23:59 brad Exp $

DISTNAME=	solid-pop3d-0.15
CATEGORIES=	net mail
NEED_VERSION=	1.302
MASTER_SITES=	http://solidpop3d.pld.org.pl/

HOMEPAGE=	http://solidpop3d.pld.org.pl/

MAINTAINER=	danh@nfol.com

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir="/var/spool/spop3d" --mandir="${PREFIX}/man" \
		 --enable-last --enable-bulletins --enable-nonip --enable-ipv6 \
		 --enable-logextend --enable-statistics

.include <bsd.port.mk>
