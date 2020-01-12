#include <gtest/gtest.h>
#include <QProcess>

#include "cmake-definitions.h"

TEST(HelloTests, testOutput)
{
    QProcess executable;
    executable.start(QString(RUNTIME_PATH) + "/HelloTests");
    executable.waitForFinished();
    QString output(executable.readAllStandardOutput());
    EXPECT_EQ(output, QString("Hello from tests!\n"));
}
