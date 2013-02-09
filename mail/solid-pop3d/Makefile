# $OpenBSD: Makefile,v 1.26 2013/02/09 14:49:51 sthen Exp $

COMMENT=	flexible POP3 server

VERSION=	0.15
DISTNAME=	solid-pop3d-${VERSION}
REVISION =	5
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

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/spool/spop3d

SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --mandir="${PREFIX}/man" \
		 --enable-last --enable-bulletins --enable-nonip \
		 --enable-ipv6 --enable-resolve --enable-connect \
		 --enable-logextend --enable-statistics 
USE_GROFF =	Yes
NO_REGRESS=	Yes

# enable support for APOP authentication.
.if ${FLAVOR:Mapop}
CONFIGURE_ARGS+= --enable-userconfig --enable-apop
.else
CONFIGURE_ARGS+= --disable-userconfig --disable-apop
.endif

.include <bsd.port.mk>
