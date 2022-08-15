COMMENT =	marked-up plain text to formatted document converter

CATEGORIES =	textproc

GH_ACCOUNT =	fletcher
GH_PROJECT =	MultiMarkdown-6
GH_TAGNAME =	6.6.0
PKGNAME =	multimarkdown-${GH_TAGNAME}

HOMEPAGE =	http://fletcherpenney.net/multimarkdown/

# MIT (see LICENSE)
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MODULES =	devel/cmake

post-install:
	rm ${PREFIX}/{LICENSE.txt,README.txt}
	mv ${PREFIX}/bin/{mmd,mmd2xhtml} # avoid conflict with mtools

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
