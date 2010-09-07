# $OpenBSD: Makefile,v 1.2 2010/09/07 14:13:33 ajacoutot Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5rc4
CATEGORIES=	security

REVISION=	0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	http://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-firewall=pf

NO_REGRESS=	Yes

.include <bsd.port.mk>
