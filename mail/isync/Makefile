# $OpenBSD: Makefile,v 1.4 2001/10/29 19:24:57 danh Exp $

COMMENT= 	"synchronize IMAP4 and maildir mailboxes"

DISTNAME=	isync-0.5
CATEGORIES=	mail
NEED_VERSION=	1.364
MASTER_SITES=	http://www.sigpipe.org:8080/isync/

HOMEPAGE=	http://www.sigpipe.org:8080/isync/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
