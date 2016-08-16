# $OpenBSD: Makefile,v 1.2 2016/08/16 06:53:44 jasper Exp $

COMMENT =		Git extension for versioning large files

GH_PROJECT =		git-lfs
GH_ACCOUNT =		github
GH_TAGNAME =		v1.3.1

CATEGORIES =		devel

HOMEPAGE =		https://git-lfs.github.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go \
			lang/ruby
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =		textproc/ruby-ronn

# Convert the manpages with ronn instead of mangen.go
post-build:
	cd ${WRKSRC}/docs/man/ && \
		for m in *.ronn; do ronn${MODRUBY_BINREV} -r $$m; done

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
