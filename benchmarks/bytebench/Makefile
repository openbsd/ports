# $OpenBSD: Makefile,v 1.19 2007/09/15 21:30:26 simon Exp $

COMMENT=	BYTE magazine benchmark suite
DISTNAME=       bytebench-3.1
CATEGORIES=	benchmarks

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

MASTER_SITES=   ftp://ftp.inria.fr/archives/system/benchmark/
EXTRACT_SUFX=	.tar.Z

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

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
