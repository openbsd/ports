# $OpenBSD: Makefile,v 1.11 2019/07/12 21:02:23 sthen Exp $

COMMENT=		SMTP/LMTP proxy for Spamassassin

GH_ACCOUNT=		mpaperno
GH_PROJECT=		spampd
GH_TAGNAME=		2.53
REVISION=		0

CATEGORIES=		mail

HOMEPAGE=		http://www.worlddesign.com/index.cfm/page/rd/mta/spampd.htm

# GPLv3+
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Net-Server \
			mail/p5-Mail-SpamAssassin

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	cd ${WRKSRC} && \
		pod2man --section=8 --center="Spam Proxy Daemon" spampd.pl > spampd.8
	${INSTALL_MAN} ${WRKBUILD}/spampd.8 ${PREFIX}/man/man8/spampd.8
	${INSTALL_SCRIPT} ${WRKSRC}/spampd.pl ${PREFIX}/sbin/spampd

.include <bsd.port.mk>
