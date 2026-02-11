COMMENT = 	fixed width sans font designed especially for coders
MODFONT_FAMILY =	anonymous-pro
MODFONT_VERSION =	1.002
DISTNAME =	AnonymousPro-${MODFONT_VERSION:S/./_/}
REVISION =	5

MODULES =	font
CATEGORIES =	fonts x11

SITES =		https://www.marksimonson.com/assets/content/fonts/
HOMEPAGE =	https://www.marksimonson.com/fonts/view/anonymous-pro

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/AnonymousPro-${MODFONT_VERSION}.001

MODFONT_DOCFILES =	*.txt

do-patch:
	cd ${WRKDIST} && for f in *.ttf; do \
		mv "$$f" `echo $$f | sed -e 's/ //g'`; done

.include <bsd.port.mk>
