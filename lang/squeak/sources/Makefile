# $OpenBSD: Makefile,v 1.1 2004/07/21 11:19:30 espie Exp $


COMMENT=	"smalltalk system, sources"

DISTFILES=Squeak-${MAJOR}.sources.tar.gz
EXTRACT_ONLY=
NO_BUILD=Yes
DISTNAME=squeak-sources-${MAJOR}

do-install:
	cd ${WRKINST} && tar -zx -s ,Squeak-${MAJOR}/,, -f ${FULLDISTDIR}/${DISTFILES}


.include <bsd.port.mk>
