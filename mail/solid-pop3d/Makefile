# $OpenBSD: Makefile,v 1.12 2002/09/12 16:41:26 danh Exp $

COMMENT=	"flexible POP3 server"

VERSION=	0.15
DISTNAME=	solid-pop3d-${VERSION}
CATEGORIES=	mail
MASTER_SITES=	http://solidpop3d.pld.org.pl/ \
		ftp://ftp.rudykot.pl/pub/solidpop3d/ \
		ftp://sedez.iq.pl/pub/solidpop3d/ \
		ftp://dione.ids.pl/pub/solidpop3d/

HOMEPAGE=	http://solidpop3d.pld.org.pl/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

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
PKGNAME=${DISTNAME}p1
.else
CONFIGURE_ARGS+= --disable-userconfig --disable-apop
.endif

.include <bsd.port.mk>
