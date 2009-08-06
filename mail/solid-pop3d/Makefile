# $OpenBSD: Makefile,v 1.19 2009/08/06 23:40:47 martynas Exp $

COMMENT=	flexible POP3 server

VERSION=	0.15
DISTNAME=	solid-pop3d-${VERSION}
PKGNAME=	${DISTNAME}p4
CATEGORIES=	mail
MASTER_SITES=	ftp://dione.ids.pl/pub/solidpop3d/

HOMEPAGE=	http://solidpop3d.pld.org.pl/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

FLAVORS=	apop 
FLAVOR?=

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir="/var/spool/spop3d" \
		 --mandir="${PREFIX}/man" \
		 --enable-last --enable-bulletins --enable-nonip \
		 --enable-ipv6 --enable-resolve --enable-connect \
		 --enable-logextend --enable-statistics 
NO_REGRESS=	Yes

# enable support for APOP authentication.
.if ${FLAVOR:L:Mapop}
CONFIGURE_ARGS+= --enable-userconfig --enable-apop
.else
CONFIGURE_ARGS+= --disable-userconfig --disable-apop
.endif

.include <bsd.port.mk>
