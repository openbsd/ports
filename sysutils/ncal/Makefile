# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:46 sthen Exp $

COMMENT=	display a calendar and the date of Easter

DISTNAME=	ncal-334873
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/

WANTLIB=	c curses

WRKSRC=		${WRKDIR}/${DISTNAME}/ncal
MAKE_FILE=	${FILESDIR}/Makefile

NO_TEST=	Yes

# Convenience target for maintainer; requires devel/subversion.
distfile:
	@repo=https://svn.freebsd.org/base; \
	rev1=`svn info --show-item last-changed-revision \
	    $$repo/head/lib/libcalendar`; \
	rev2=`svn info --show-item last-changed-revision \
	    $$repo/head/usr.bin/ncal`; \
	rev=$$(($$rev1 > $$rev2 ? $$rev1 : $$rev2)); \
	mkdir ncal-$$rev; \
	svn export -r$$rev1 $$repo/head/lib/libcalendar \
	    ncal-$$rev/libcalendar; \
	svn export -r$$rev2 $$repo/head/usr.bin/ncal ncal-$$rev/ncal; \
	tar czf ncal-$$rev.tar.gz ncal-$$rev; \
	rm -rf ncal-$$rev

.include <bsd.port.mk>
