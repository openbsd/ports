# $OpenBSD: Makefile,v 1.1.1.1 2009/01/01 19:01:14 stsp Exp $

COMMENT=	client and servers for the WIDE DHCPv6 protocol

DISTNAME=       wide-dhcpv6-20080615
CATEGORIES=     net
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=wide-dhcpv6/}

HOMEPAGE=	http://wide-dhcpv6.sourceforge.net/

MAINTAINER=	Stefan Sperling <stsp@stsp.name>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

WANTLIB=		c
NO_REGRESS=		Yes

do-install:
.for p in dhcp6c dhcp6s dhcp6relay dhcp6ctl
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
	@mv ${WRKSRC}/$p.8 ${WRKSRC}/$p.8.dist
	@sed s!/usr/local/etc!${SYSCONFDIR}!g < ${WRKSRC}/$p.8.dist > \
		${WRKSRC}/$p.8
	${INSTALL_MAN} ${WRKSRC}/$p.8 ${PREFIX}/man/man8
.endfor
.for m in dhcp6c.conf.5 dhcp6s.conf.5
	@mv ${WRKSRC}/$m ${WRKSRC}/$m.dist
	@sed s!/usr/local/etc!${SYSCONFDIR}!g < ${WRKSRC}/$m.dist > \
		${WRKSRC}/$m
	${INSTALL_MAN} ${WRKSRC}/$m ${PREFIX}/man/man5
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wide-dhcpv6
	${INSTALL_DATA} ${WRKSRC}/dhcp6s.conf.sample \
		${PREFIX}/share/examples/wide-dhcpv6/
	${INSTALL_DATA} ${WRKSRC}/dhcp6c.conf.sample \
		${PREFIX}/share/examples/wide-dhcpv6/

.include <bsd.port.mk>
