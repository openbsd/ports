# $OpenBSD: Makefile,v 1.1.1.1 2016/08/05 05:20:50 bentley Exp $

COMMENT =	book on version control with Git

V =		1084
PKGNAME =	progit-$V

CATEGORIES =	books

HOMEPAGE =	https://progit.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# CC-BY-NC-SA 3.0
PERMIT_PACKAGE_CDROM =	non-commercial
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =		https://progit2.s3.amazonaws.com/en/2016-03-22-f3531/

DISTFILES =		progit-en.$V.pdf \
			progit-en.$V.zip
EXTRACT_ONLY =		progit-en.$V.zip

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/progit/html
	${INSTALL_DATA} ${DISTDIR}/progit-en.$V.pdf \
		${PREFIX}/share/doc/progit/progit.pdf
	cp -R ${WRKDIST}/*.html ${WRKDIST}/book/ ${WRKDIST}/theme/ \
		${PREFIX}/share/doc/progit/html

.include <bsd.port.mk>
