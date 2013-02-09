# $OpenBSD: Makefile,v 1.5 2013/02/09 14:49:53 sthen Exp $

COMMENT=	protect against brute force attacks on sshd and others

DISTNAME=	sshguard-1.5
CATEGORIES=	security

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
USE_GROFF =	Yes
NO_REGRESS=	Yes

FLAVORS =	tcpd
FLAVOR?=

.if ${FLAVOR:Mtcpd}
CONFIGURE_ARGS = --with-firewall=hosts
.else
CONFIGURE_ARGS = --with-firewall=pf 
.endif

.include <bsd.port.mk>
