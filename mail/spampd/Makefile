# $OpenBSD: Makefile,v 1.1.1.1 2014/02/08 18:58:22 ajacoutot Exp $

COMMENT=		SMTP/LMTP proxy for Spamassassin

DISTNAME=		spampd-2.30
CATEGORIES=		mail

HOMEPAGE=		http://www.worlddesign.com/index.cfm/page/rd/mta/spampd.htm
MAINTAINER=		Henrik Friedrichsen <openbsd@diff.cc>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		http://www.worlddesign.com/Content/rd/mta/spampd/

RUN_DEPENDS=		devel/p5-Net-Server \
			mail/p5-Mail-SpamAssassin

PKG_ARCH=		*
NO_BUILD=		Yes

do-install:
	cd ${WRKSRC} && \
		pod2man --section=8 --center="Spam Proxy Daemon" spampd > spampd.8
	${INSTALL_MAN} ${WRKBUILD}/spampd.8 ${PREFIX}/man/man8/spampd.8
	${INSTALL_SCRIPT} ${WRKSRC}/spampd ${PREFIX}/sbin/spampd

.include <bsd.port.mk>
