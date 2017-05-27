# $OpenBSD: Makefile,v 1.9 2017/05/27 13:55:58 ajacoutot Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
REVISION=	2
CATEGORIES=	security

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	http://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
NO_TEST=	Yes

CONFIGURE_ARGS = --with-firewall=pf 

.include <bsd.port.mk>
