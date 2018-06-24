# $OpenBSD: Makefile,v 1.12 2018/06/24 10:54:19 kn Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
REVISION=	5
CATEGORIES=	security

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c pthread

HOMEPAGE=	https://www.sshguard.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sshguard/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-firewall=pf

NO_TEST=	Yes

.include <bsd.port.mk>
