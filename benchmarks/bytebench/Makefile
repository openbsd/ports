# $OpenBSD: Makefile,v 1.9 2000/10/22 14:02:58 espie Exp $

DISTNAME=       bytebench-3.1
CATEGORIES=	benchmarks
NEED_VERSION=	1.250

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

MASTER_SITES=   ftp://ftp.inria.fr/system/benchmark/
EXTRACT_SUFX=	.tar.Z

do-install:
		-${INSTALL_DATA_DIR} ${PREFIX}/lib/bytebench
		for f in Makefile README Run doc pgms results testdir; \
			do cp -R $(WRKSRC)/$$f $(PREFIX)/lib/bytebench; done
		echo "#!/bin/sh"		   >  $(PREFIX)/bin/bytebench
		echo "TMPDIR=\$${TMPDIR-/var/tmp}" >> $(PREFIX)/bin/bytebench
		echo "RESULTDIR=/tmp"		   >> $(PREFIX)/bin/bytebench
		echo "export TMPDIR RESULTDIR"	   >> $(PREFIX)/bin/bytebench
		echo "cd $(TRUEPREFIX)/lib/bytebench"  >> $(PREFIX)/bin/bytebench
		echo "exec ./Run \"\$$@\""	   >> $(PREFIX)/bin/bytebench
		chmod 755 $(PREFIX)/bin/bytebench
		chmod 644 $(PREFIX)/lib/bytebench/Makefile
		chmod 644 $(PREFIX)/lib/bytebench/README
		chmod 755 $(PREFIX)/lib/bytebench/Run
		chmod 755 $(PREFIX)/lib/bytebench/doc
		chmod 755 $(PREFIX)/lib/bytebench/pgms
		chmod 755 $(PREFIX)/lib/bytebench/pgms/*
		rm -f $(PREFIX)/lib/bytebench/pgms/*.orig
		chmod 755 $(PREFIX)/lib/bytebench/results
		chmod 755 $(PREFIX)/lib/bytebench/testdir

.include <bsd.port.mk>
