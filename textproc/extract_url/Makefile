# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:58 sthen Exp $

COMMENT =		extract URLs from MIME email messages or plain text

GH_ACCOUNT =		m3m0ryh0l3
GH_PROJECT =		extracturl
GH_TAGNAME =		v1.6.2

CATEGORIES =		textproc

HOMEPAGE =		http://www.memoryhole.net/~kyle/extract_url/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# BSD
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		mail/p5-MIME-tools \
			www/p5-HTML-Parser
RUN_DEPENDS =		devel/p5-Curses-UI \
			mail/p5-MIME-tools \
			www/p5-HTML-Parser \
			www/p5-URI-Find

FAKE_FLAGS =		man_prefix=${PREFIX} \
			prefix=${PREFIX}

USE_GMAKE =		Yes

post-patch:
	sed -i "/pod2man.mk/s/make/${GMAKE}/" ${WRKSRC}/Makefile
	sed -i "s/extract_url.pl/extract_url/g" ${WRKSRC}/extract_url.pl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/extract_url
	${INSTALL_DATA} ${WRKSRC}/extract_urlview.sample \
		${PREFIX}/share/examples/extract_url

.include <bsd.port.mk>
