# $OpenBSD: Makefile,v 1.10 2000/04/09 17:37:42 espie Exp $

BROKEN=		does not install cleanly, major fixups required.

DISTNAME=	cnews
PKGNAME=	cnews-cr.g
CATEGORIES=	news
NEED_VERSION=	1.210
FAKE=No
MASTER_SITES=	ftp://ftp.zoo.toronto.edu/pub/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile
MAN1=		checknews.1cn inews.1cn postnews.1cn readnews.1cn
MAN5=		controlperm.5 news.5 newsctl.5 newsdb.5 newsoverview.5 \
		newssys.5
MAN8=		cnewsdo.8cn expire.8cn explode.8cn mergeactive.8 \
		mkhistory.8cn newsaux.8cn newsbatch.8cn newsmail.8cn \
		newsmaint.8cn newsoverview.8 relaynews.8cn report.8cn \
		rnews.8cn

NEWSSPOOL=	${PREFIX}/newsspool
NEWSBIN=	${PREFIX}/news/cnewsbin
NEWSLIB=	${PREFIX}/news/lib
MANDIR=		${PREFIX}/man

do-install:
	rm -f ${PREFIX}/bin/inews
	cp ${WRKSRC}/libdbz/dbz.h ${PREFIX}/include
	cp ${WRKSRC}/libcnews.a ${PREFIX}/lib
	mkdir -p ${NEWSSPOOL}
	-ln -s ${NEWSSPOOL} /var/news
	mkdir -p ${NEWSBIN} ${NEWSLIB}
	chown news.news ${NEWSSPOOL} ${NEWSLIB}
	chown bin.bin ${NEWSBIN}
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} install | \
		su -m bin
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} setup | \
		su -m news
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ui readpostcheck | \
		su -m bin
	chown news.news ${NEWSBIN}/input/newsspool
	chmod 6755 ${NEWSBIN}/input/newsspool
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.1* ${MANDIR}/man1
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.5* ${MANDIR}/man5
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.8* ${MANDIR}/man8
	@echo ""
	@echo "!!!!!!!!"
	@echo "you MUST change the configuration of this news setup:"
	@echo "	cd to ${NEWSLIB} and change the following files..."
	@echo "mailname, whoami, organization, mailpaths, sys, readnews.ctl, postdefltgroup"
	@echo "	to suit your local system and news topology."
	@echo "!!!!!!!!"
	@echo ""

.include <bsd.port.mk>
