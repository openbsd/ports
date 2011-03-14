# $OpenBSD: Makefile,v 1.3 2011/03/14 23:26:48 jeremy Exp $

COMMENT=	curses-based 3270 terminal editor

DISTNAME=	suite3270-3.3.11ga6-src
PKGNAME=	c3270-3.3.11.6
EXTRACT_SUFX=	.tgz
CATEGORIES=	comms

HOMEPAGE=	http://x3270.bgp.nu/

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl ncursesw readline util

MODULES=                converters/libiconv

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=x3270/}	

WRKDIST=		${WRKDIR}/c3270-3.3
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${WRKINST}/etc/x3270/ibm_hosts
	rmdir ${WRKINST}/etc/x3270

NO_REGRESS=		Yes

.include <bsd.port.mk>
