# $OpenBSD: Makefile,v 1.6 2002/05/25 06:19:07 danh Exp $

COMMENT= 	"synchronize IMAP4 and maildir mailboxes"

DISTNAME=	isync-0.8
CATEGORIES=	mail
NEED_VERSION=	1.522
MASTER_SITES=	http://sigpipe.org:8080/isync/ \
		http://www.cs.hmc.edu/~me/isync/

HOMEPAGE=	http://sigpipe.org:8080/isync/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/isync
	${INSTALL_DATA} ${WRKSRC}/sample.isyncrc ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
