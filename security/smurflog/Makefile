# $OpenBSD: Makefile,v 1.10 2001/05/06 03:46:20 lebel Exp $

COMMENT=	"a program to assist logging of smurf attacks"

COMMENT=	"logs smurf attacks"
DISTNAME=	smurflog-2.1
CATEGORIES=	net security
NEED_VERSION=	1.402
MASTER_SITES=	http://www.nectar.com/distfiles/
#		http://www.sy.net/security/ \
#		http://www.bitchx.com/~humble/files/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu autoconf

do-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/README.smurflog
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
